

% path to folder with miniscope session

%dirpath = INPUT_dirpath ; 

% input params for normcorr

%run_parallel = INPUT_parallel_enable ; 
%movie_start = INPUT_movie_start ; 
%movie_end = INPUT_movie_end ; 
%gSig = str2num(INPUT_gSig) ; 
%gSiz = str2num(INPUT_gSiz) ; 
%Fs = str2num(INPUT_Fs) ;
%ssub = str2num(INPUT_ssub) ;  


%loop through videos with parallel option 

%{
if run_parallel == true
    
    parfor x = movie_start:movie_end
        disp(strcat(dirpath, '/msCam', num2str(x), '.avi'))
        jjm_normcorr_fn(strcat(dirpath, '/msCam', num2str(x), '.avi'), gSig, gSiz, Fs, ssub);
    end
    
else

    for x = (movie_start): movie_end
        disp('parralel is false')
        disp(strcat(dirpath, '/msCam', num2str(x), '.avi'))
        jjm_normcorr_fn(strcat(dirpath, '/msCam', num2str(x), '.avi'), gSig, gSiz, Fs, ssub);

    end    
end
%}

jjm_normcorr_fn(strcat(dirpath, '/msCam', num2str(x), '.avi'), gSig, gSiz, Fs, ssub);